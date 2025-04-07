/*


В рамках реформы Алголандии разрабатывается проект по оптимизации дорожной системы каждого города. Дорожная система каждого города может быть представлена в виде графа, в котором вершина соответствует перекрестку, а ребро графа соответствует дороге, соединяющей соответствующие перекрестки. За годы истории развития городов сложилась такая ситуация, что некоторые города получились сильно вытянутыми, и дорога из одного конца города в другой по дорогам может занять очень много времени, в то время как сами пункты назначения могут находиться близко географически, а прямого пути просто нет — есть только длинный путь в объезд по дорогам.

Вам нужно среди всех кратчайших расстояний между всеми парами перекрестков найти максимальное расстояние. Так как это слишком сложно, вам предлагается сделать это для подмножества дорог такого, что между любыми двумя перекрестками существует ровно один путь.
Формат ввода

В первой строке целое число N (1 ≤
N ≤ 5 ⋅ 105) — количество перекрестков в городе.
В следующих N - 1 - ой строках содержится описание дорог, а именно, в каждой строке записана пара целых чисел, разделенных одним пробелом, a и b (1 ≤ a, b ≤

N), означающих, что перекрестки с номерами a и b соединены дорогами.
Формат вывода

Требуется вывести ровно одно число — максимальное возможное расстояние по дорогам между какими-то перекрестками.
*/
#include <iostream>
#include <vector>

void dfs(int v, std::vector<int>& visited, const std::vector<std::vector<int>>& graph, std::vector<int>& depth, int& max_depth, int& max_depth_v) {
    visited[v] = 1;
    if (depth[v] > max_depth) {
        max_depth = depth[v];
        max_depth_v = v;
    }
    for (int neighbour : graph[v]) {
        if (visited[neighbour] == 0) {
            depth[neighbour] = depth[v] + 1;
            dfs(neighbour, visited, graph, depth, max_depth, max_depth_v);
        }
    }
}

int main() {
    int n;
    int max_depth = 0;
    int max_depth_v = 0;
    std::cin >> n;
    if (n == 1) {
        std::cout << 0 << std::endl;
        return 0;
    }
    std::vector<std::vector<int>> graph;
    std::vector<int> visited{};
    std::vector<int> depth{};
    graph.resize(n + 1);
    visited.resize(n + 1);
    depth.resize(n + 1);
    for (int i = 0; i < n - 1; ++i) {
        int vertex_1, vertex_2;
        std::cin >> vertex_1 >> vertex_2;
        graph[vertex_1].push_back(vertex_2);
        graph[vertex_2].push_back(vertex_1);
    }
    dfs(1, visited, graph, depth, max_depth, max_depth_v);
    max_depth = 0;
    std::fill(visited.begin(), visited.end(), 0);
    std::fill(depth.begin(), depth.end(), 0);
    dfs(max_depth_v, visited, graph, depth, max_depth, max_depth_v);
    std::cout << max_depth << std::endl;
}