# Paging

pagination实现的方式有两种，一种是全部加载数据，然后通过hidden()来实现分页，即客户端的实现</br>
还有一种是sql limit，每次查询分页的数据，即服务器端的实现。

这个例子用的是服务器分页，然后通过ajax实现无刷新的分页
