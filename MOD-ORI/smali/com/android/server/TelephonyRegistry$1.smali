.class public final Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const v2, 0x7fffffff

    .line 5
    .line 6
    .line 7
    if-eq v1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 42
    .line 43
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 44
    .line 45
    if-ne v5, v2, :cond_1

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 48
    .line 49
    invoke-static {v5, v4, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 58
    .line 59
    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 62
    .line 63
    iput p1, v1, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 64
    .line 65
    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 66
    .line 67
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Default subscription updated: mDefaultPhoneId="

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 77
    .line 78
    iget v1, v1, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mDefaultSubId="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 106
    .line 107
    sget-object v1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const-string/jumbo v1, "phone"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/4 v1, 0x0

    .line 125
    :goto_2
    if-ge v1, p1, :cond_5

    .line 126
    .line 127
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    move v3, v2

    .line 138
    :cond_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 139
    .line 140
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 141
    .line 142
    aget-object v5, v5, v1

    .line 143
    .line 144
    invoke-virtual {v4, v3, v5, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    .line 145
    .line 146
    .line 147
    add-int/2addr v1, v0

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    :goto_3
    return-void
.end method
