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

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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

    .line 4
    const v2, 0x7fffffff

    .line 7
    if-eq v1, v0, :cond_3

    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq v1, v0, :cond_0

    .line 12
    goto/16 :goto_3

    .line 14
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 16
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 18
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 20
    iget-object v1, v1, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 25
    iget-object v3, v3, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 43
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 45
    if-ne v5, v2, :cond_1

    .line 47
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 49
    invoke-static {v5, v4, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

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

    .line 57
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 63
    iput p1, v1, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 65
    iput v0, v1, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 67
    iget-object p1, v1, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "Default subscription updated: mDefaultPhoneId="

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 78
    iget v1, v1, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", mDefaultSubId="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 90
    iget p0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

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

    .line 107
    sget-object v1, Lcom/android/server/TelephonyRegistry;->INVALID_LCE_LIST:Ljava/util/List;

    .line 109
    iget-object p1, p1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 111
    const-string/jumbo v1, "phone"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 120
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 123
    move-result p1

    .line 124
    const/4 v1, 0x0

    .line 125
    :goto_2
    if-ge v1, p1, :cond_5

    .line 127
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 130
    move-result v3

    .line 131
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_4

    .line 137
    move v3, v2

    .line 138
    :cond_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 140
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry;->mCellIdentity:[Landroid/telephony/CellIdentity;

    .line 142
    aget-object v5, v5, v1

    .line 144
    invoke-virtual {v4, v3, v5, v0}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;Z)V

    .line 147
    add-int/2addr v1, v0

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    :goto_3
    return-void
.end method
