# Famous Paintings Data Analysis

A database containing information about famous paintings and their artists could serve as a valuable resource for promoting art appreciation, supporting research and analysis, facilitating exhibition planning, informing market decisions, and enhancing educational experiences related to the visual arts.

## About Data
The dataset was obtained from the [🖼️ Famous Paintings](https://www.kaggle.com/datasets/mexwell/famous-paintings/code), which contains famous paintings and their artists. The data contains 7 tables:

01. Artist

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| artist_id               | Artist's ID                             | INT       |
| full_name               | Artist's full name                      | VARCHAR   |
| first_name              | Artist's first name                     | VARCHAR   |
| middle_name             | Artist's middle name                    | VARCHAR   |
| last_name               | Artist's last name                      | VARCHAR   |
| nationality             | Artist's nationality                    | VARCHAR   |
| style                   | Artist's painting style                 | VARCHAR   |
| birth                   | Artist's birth year                     | INT       |
| death                   | Artist's death year                     | INT       |

02. Work

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| work_id                 | Painting's ID                           | INT       |
| name                    | Painting's name                         | VARCHAR   |
| artist_id               | Artist's ID                             | INT       |
| style                   | Painting's style                        | VARCHAR   |
| museum_id               | Museum's ID                             | VARCHAR   |

03. Museum

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| work_id                 | Painting's ID                           | INT       |
| name                    | Painting's name                         | VARCHAR   |
| artist_id               | Artist's ID                             | INT       |
| style                   | Painting's style                        | VARCHAR   |
| museum_id               | Museum's ID                             | VARCHAR   |

04. Museum hour

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| museum_id               | Museum's ID                             | INT       |
| day                     | Day                                     | VARCHAR   |
| open                    | Open time                               | VARCHAR   |
| close                   | Close time                              | VARCHAR   |

5. Product size

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| work_id                 | Painting's ID                           | INT       |
| size_id                 | Painting size's ID                      | INT       |
| sale_price              | Painting's sale price                   | INT       |
| regular_price           | Painting's regular price                | INT       |

6. Canvas size

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| size_id                 | Painting size's ID                      | INT       |
| width                   | Painting's width                        | INT       |
| height                  | Painting's height                       | INT       |
| label                   | Size label                              | VARCHAR   |

7. Subject

| Column                  | Description                             | Data Type |
| :---------------------- | :-------------------------------------- | :---------|
| work_id                 | Painting's ID                           | INT       |
| subject                 | Painting's subject                      | VARCHAR   |

### Create database diagrams
<img width="1179" alt="Screenshot 2024-03-31 at 16 54 58" src="https://github.com/chilinh428/Famous-Paintings-MySQL-Project/assets/165115957/8cc3f7bc-9f4f-4b39-93b8-57ef7e770fcf">

### Analysis List

1. Artist Analysis

>

2. Museum Analysis

>

3. Painting Analysis

>
