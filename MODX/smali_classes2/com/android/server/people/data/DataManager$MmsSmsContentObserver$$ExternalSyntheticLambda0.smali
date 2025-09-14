.class public final synthetic Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/people/data/Event;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/people/data/UserData;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 17
    .line 18
    check-cast p1, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x2

    .line 41
    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/people/data/Event;

    .line 54
    .line 55
    check-cast p1, Lcom/android/server/people/data/UserData;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 62
    .line 63
    check-cast p1, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/people/data/PackageData;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 p1, 0x0

    .line 73
    :goto_2
    if-nez p1, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    const/4 v1, 0x3

    .line 86
    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 93
    .line 94
    .line 95
    :goto_3
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
