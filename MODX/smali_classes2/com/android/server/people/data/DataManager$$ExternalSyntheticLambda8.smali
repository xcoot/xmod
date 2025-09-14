.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Lcom/android/server/people/data/PackageData;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x4000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/people/data/DataManager;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/people/data/PackageData;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    .line 50
    .line 51
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/16 v2, 0x4000

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    iget-wide v4, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 77
    .line 78
    cmp-long v2, v4, v2

    .line 79
    .line 80
    if-lez v2, :cond_2

    .line 81
    .line 82
    iget-object v2, v1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    iget v1, v1, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 85
    .line 86
    iget-object v3, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
