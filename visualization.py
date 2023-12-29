import matplotlib.pyplot as plt

from main import StatisticsProvider


class StatisticsVisualizer:
    def __init__(self):
        self.statistics_provider = StatisticsProvider()

    def showHistogram(self):
        shows_rating = self.statistics_provider.get_shows_rating()
        title, rating = zip(*shows_rating)

        plt.bar(title, rating, color='orange')
        plt.xlabel('Titles')
        plt.ylabel('Rating')
        plt.title('Top 5 shows rating')
        plt.show()

    def showCircleDiagram(self):
        show_count_for_genres = self.statistics_provider.get_show_count_for_genres()
        genres, show_count = zip(*show_count_for_genres)

        plt.pie(show_count, labels=genres, autopct='%1.1f%%', startangle=90, colors=plt.cm.Paired.colors)
        plt.title('Genre percentage')
        plt.show()

    def showGraph(self):
        actor_count_for_show = self.statistics_provider.get_actor_count_for_show()
        title, actor_count = zip(*actor_count_for_show)

        plt.plot(title, actor_count, marker='o', linestyle='-')
        plt.ylabel('Actors number')
        plt.title('Actors number in shows')
        plt.xticks(rotation=15)
        plt.show()


def main():
    statistics_visualizer = StatisticsVisualizer()
    statistics_visualizer.showHistogram()
    statistics_visualizer.showCircleDiagram()
    statistics_visualizer.showGraph()


if __name__ == "__main__":
    main()
