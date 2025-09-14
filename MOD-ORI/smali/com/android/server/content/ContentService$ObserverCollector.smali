.class public Lcom/android/server/content/ContentService$ObserverCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final collected:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/util/List;

    .line 26
    .line 27
    new-instance v4, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v4, v2, v3}, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget v3, v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 33
    .line 34
    const v5, 0x8000

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, v5

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v3, v0

    .line 43
    :goto_1
    const-class v5, Landroid/app/ActivityManagerInternal;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/app/ActivityManagerInternal;

    .line 50
    .line 51
    iget v2, v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v5, 0x6

    .line 58
    if-le v2, v5, :cond_2

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-wide/16 v5, 0x2710

    .line 68
    .line 69
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->run()V

    .line 74
    .line 75
    .line 76
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method
