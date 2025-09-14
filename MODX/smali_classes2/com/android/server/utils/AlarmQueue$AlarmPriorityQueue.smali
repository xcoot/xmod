.class Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final removeKey(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Landroid/util/Pair;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Landroid/util/Pair;

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ltz v1, :cond_1

    .line 18
    .line 19
    aget-object v4, v0, v1

    .line 20
    .line 21
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    aget-object v3, v0, v1

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move v3, v2

    .line 35
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v3
.end method
