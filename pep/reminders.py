from datetime import datetime, timedelta


def generate_pep_schedule(bite_date):

    date = datetime.strptime(
        bite_date,
        "%Y-%m-%d"
    )

    schedule = {
        "Day 0": date,
        "Day 3": date + timedelta(days=3),
        "Day 7": date + timedelta(days=7),
        "Day 14": date + timedelta(days=14)
    }

    return schedule


def display_schedule(bite_date):

    schedule = generate_pep_schedule(bite_date)

    print("\nRabiesGuard PEP Schedule")
    print("------------------------")

    for dose, date in schedule.items():

        print(
            dose,
            ":",
            date.strftime("%Y-%m-%d")
        )


# Example
display_schedule("2026-08-21")