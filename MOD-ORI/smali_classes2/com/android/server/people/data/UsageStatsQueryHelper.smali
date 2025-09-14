.class public final Lcom/android/server/people/data/UsageStatsQueryHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConvoStartEvents:Ljava/util/Map;

.field public final mEventListener:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

.field public mLastEventTimestamp:J

.field public final mPackageDataGetter:Ljava/util/function/Function;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;)V
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
    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    .line 10
    .line 11
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    .line 15
    .line 16
    check-cast v1, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    cmp-long v1, v1, v3

    .line 35
    .line 36
    if-ltz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    sub-long/2addr v1, v3

    .line 48
    new-instance p2, Lcom/android/server/people/data/Event$Builder;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    const/16 v5, 0xd

    .line 55
    .line 56
    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v3, 0x3e8

    .line 60
    .line 61
    div-long/2addr v1, v3

    .line 62
    long-to-int v1, v1

    .line 63
    iput v1, p2, Lcom/android/server/people/data/Event$Builder;->mDurationSeconds:I

    .line 64
    .line 65
    new-instance v1, Lcom/android/server/people/data/Event;

    .line 66
    .line 67
    invoke-direct {v1, p2}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Landroid/content/LocusId;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p2, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object v2, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    invoke-virtual {v2, v3, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, v1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    return-void
.end method
