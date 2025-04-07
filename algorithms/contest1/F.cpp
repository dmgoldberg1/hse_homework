/*
Дано неориентированное дерево, подвешенное за вершину 1. Для каждой вершины подсчитайте, сколько вершин содержится в поддереве, подвешенном за данную вершину.
Формат ввода

В первой строке вводится число VV — количество вершин ( 3≤V≤1000003≤V≤100000).

В следующих V−1V−1 строках записано по два числа: номера соединенных ребром вершин.
Формат вывода

Выведите VV чисел — размеры поддеревьев для каждой из вершин
*/
#include <iostream>
#include <vector>


void dfs(int v, std::vector<int>& visited, const std::vector<std::vector<int>>& graph, std::vector<int>& size) {
    visited[v] = 1;
    size[v] = 1;
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            dfs(neighbour, visited, graph, size);
            size[v] += size[neighbour];
        }
    }
}

int main() {
    int n;
    std::cin >> n;
    std::vector<std::vector<int>> graph;
    std::vector<int> visited{};
    std::vector<int> size;
    graph.resize(n + 1);
    visited.resize(n + 1);
    size.resize(n + 1);
    for (int i = 0; i < n - 1; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
        graph[vertex_2].push_back(vertex_1);
    }
    dfs(1, visited, graph, size);
    for (size_t i = 1; i < size.size(); ++i) {
        std::cout << size[i] << " ";
    }
    std::cout << std::endl;
}