.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 3
    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 6

    .line 1
    const-string v0, "MultiSimPolicy"

    .line 3
    const-string/jumbo v1, "onSubscriptionsChanged"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 11
    iget-boolean v3, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 13
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string/jumbo v3, "showSubscriptionInfos"

    .line 21
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSubScriptionManager()Landroid/telephony/SubscriptionManager;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v3

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 48
    iget-boolean v5, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 50
    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->registerSubscriptionCallback()V

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 75
    iput v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 77
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;

    .line 79
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :goto_1
    return-void
.end method
