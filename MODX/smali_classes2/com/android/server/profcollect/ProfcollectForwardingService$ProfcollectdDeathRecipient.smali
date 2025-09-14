.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "ProfcollectForwardingService"

    .line 2
    .line 3
    const-string/jumbo v1, "profcollectd has died"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    const-wide/16 v1, 0x1388

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
