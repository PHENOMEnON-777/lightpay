import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/logic/bloc/historybloc/History/History_bloc.dart';

enum HistoryType { transaction, recharge }

class HistorScreen extends StatefulWidget {
  const HistorScreen({super.key});

  @override
  State<HistorScreen> createState() => _HistorScreenState();
}

class _HistorScreenState extends State<HistorScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  bool _isSearchVisible = false;
  HistoryType _currentType = HistoryType.transaction;
  bool _isLoadingMore = false;

  List<dynamic> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _loadInitialData();
    _setupScrollListener();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _loadInitialData() {
    context.read<HistoryBloc>().add(HistoryEvent.gethistory());
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 
          _scrollController.position.maxScrollExtent - 100) {
        _loadMoreData();
      }
    });
  }

  void _loadMoreData() {
    if (_isLoadingMore) return;
    
    setState(() => _isLoadingMore = true);
    
    if (_currentType == HistoryType.transaction) {
      context.read<HistoryBloc>().add(HistoryEvent.gethistory());
    } else {
      context.read<HistoryBloc>().add(HistoryEvent.getrechargelist());
    }
    
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) setState(() => _isLoadingMore = false);
    });
  }

  void _switchTab(HistoryType type) {
    if (_currentType == type) return;
    
    setState(() {
      _currentType = type;
      _filteredItems.clear();
    });
    
    if (type == HistoryType.transaction) {
      context.read<HistoryBloc>().add(HistoryEvent.gethistory());
    } else {
      context.read<HistoryBloc>().add(HistoryEvent.getrechargelist());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: _isSearchVisible
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {}); // triggers filtering on rebuild
                },
              )
            : const Text('History', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(_isSearchVisible ? Icons.close : Icons.search, color: Colors.white),
            onPressed: () {
              setState(() {
                _isSearchVisible = !_isSearchVisible;
                if (!_isSearchVisible) _searchController.clear();
              });
            },
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryFixed,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            _buildTabBar(),
            Expanded(child: _buildContent()),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: _buildTab('Transactions', HistoryType.transaction, Icons.payment)),
          const SizedBox(width: 12),
          Expanded(child: _buildTab('Recharges', HistoryType.recharge, Icons.currency_exchange_rounded)),
        ],
      ),
    );
  }

  Widget _buildTab(String title, HistoryType type, IconData icon) {
    final isSelected = _currentType == type;
    return GestureDetector(
      onTap: () => _switchTab(type),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: isSelected ? Colors.white : Colors.grey[600], size: 18),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => _buildEmptyState(),
          loadinghistory: () => const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          loadinglistofrecharge: () => const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          getlistoftransactionsbyuserIdsuccessfull: (response) => _buildList(response, true),
          getlistofrechargebyuserIdsuccessfull: (response) => _buildList(response, false),
          orElse: () => const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
    );
  }

  Widget _buildList(dynamic response, bool isTransaction) {
    final dataKey = isTransaction ? 'transactions' : 'recharges';
    final allItems = response.data[dataKey]['data'] as List;

    _filteredItems = _searchController.text.isEmpty
        ? allItems
        : allItems.where((item) {
            final search = _searchController.text.toLowerCase();
            if (isTransaction) {
              return item['id'].toString().contains(search) ||
                  item['amount'].toString().contains(search) ||
                  item['status'].toString().toLowerCase().contains(search);
            } else {
              return item['provider'].toString().toLowerCase().contains(search) ||
                  item['phone'].toString().contains(search) ||
                  item['amount'].toString().contains(search);
            }
          }).toList();

    if (_filteredItems.isEmpty) return _buildEmptyState();

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: _filteredItems.length + (_isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == _filteredItems.length) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(),
            ),
          );
        }
        return isTransaction
            ? _buildTransactionCard(_filteredItems[index])
            : _buildRechargeCard(_filteredItems[index]);
      },
    );
  }

  Widget _buildTransactionCard(Map<String, dynamic> transaction) {
    final screenWidth = MediaQuery.of(context).size.width;
    final amount = double.parse(transaction['amount'].toString());
    final status = transaction['status'].toString();
    final date = DateTime.parse(transaction['created_at']);
    
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: _getStatusColor(status).withOpacity(0.1),
            child: Icon(Icons.payment, color: _getStatusColor(status)),
          ),
          title: Text('#${transaction['id']}', style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
          subtitle: Text(_formatDate(date), style: const TextStyle(color: Colors.blueGrey)),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${amount.toStringAsFixed(0)} FCFA',
                style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),
              ),
              _buildStatusChip(status),
            ],
          ),
        ),
        SizedBox(
          width: screenWidth * 0.2,
          child: Divider(color: Theme.of(context).colorScheme.onSecondary),
        )
      ],
    );
  }

  Widget _buildRechargeCard(Map<String, dynamic> recharge) {
    final amount = double.parse(recharge['amount'].toString());
    final status = recharge['status'].toString();
    final provider = recharge['provider'].toString();
    final phone = recharge['phone'].toString();
    final date = DateTime.parse(recharge['created_at']);
    
    return Card(
      color: Theme.of(context).colorScheme.secondaryFixed,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getProviderColor(provider).withOpacity(0.1),
          child: Icon(Icons.currency_exchange_rounded, color: _getProviderColor(provider)),
        ),
        title: Text('$provider Recharge', style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(phone, style: TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
            Text(_formatDate(date), style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${amount.toStringAsFixed(0)} FCFA',
              style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary),
            ),
            _buildStatusChip(status),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: _getStatusColor(status).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.toLowerCase(),
        style: TextStyle(
          color: _getStatusColor(status),
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _currentType == HistoryType.transaction ? Icons.payment : Icons.phone_android,
            size: 64,
          ),
          const SizedBox(height: 16),
          Text(
            _currentType == HistoryType.transaction ? 'No transactions found' : 'No recharges found',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'approved': return Colors.green;
      case 'pending': return Colors.orange;
      case 'failed': return Colors.deepOrangeAccent;
      default: return Colors.grey;
    }
  }

  Color _getProviderColor(String provider) {
    switch (provider.toLowerCase()) {
      case 'momo': return Colors.amber;
      case 'orange': return const Color.fromARGB(255, 255, 108, 63);
      default: return Colors.blue;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date).inDays;
    
    if (diff == 0) return 'Today';
    if (diff == 1) return 'Yesterday';
    if (diff < 7) return '$diff days ago';
    return '${date.day}/${date.month}/${date.year}';
  }
}
