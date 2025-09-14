.class public final synthetic Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {v3, v4, v1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v3, 0x0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_5

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 40
    .line 41
    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    sget v5, Lcom/android/server/notification/ShortcutHelper;->$r8$clinit:I

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v6, v1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v5, 0x0

    .line 85
    :goto_1
    if-eqz v5, :cond_3

    .line 86
    .line 87
    const/16 v6, 0x4000

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Lcom/android/server/people/data/ConversationInfo;->hasShortcutFlags(I)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    :cond_3
    const/4 v3, 0x1

    .line 96
    :cond_4
    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    if-eqz v3, :cond_6

    .line 103
    .line 104
    iget-object p0, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    .line 111
    .line 112
    .line 113
    :cond_6
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance v3, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    iget-object v0, v0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/people/data/DataManager;->removeConversations(ILjava/lang/String;Ljava/util/Set;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
