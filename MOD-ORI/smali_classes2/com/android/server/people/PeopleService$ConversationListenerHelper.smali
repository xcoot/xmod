.class public final Lcom/android/server/people/PeopleService$ConversationListenerHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mListeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onConversationsUpdate(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v4, v5, v6, v3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_1
    if-ge p1, v0, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/app/people/IConversationListener;

    .line 85
    .line 86
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 91
    .line 92
    invoke-interface {v3, v2}, Landroid/app/people/IConversationListener;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    :catch_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
