.class public final Lcom/android/server/am/mars/MARsBigData$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 7
    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    .line 18
    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V

    .line 21
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    .line 23
    iget-object p2, p1, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 25
    if-eqz p2, :cond_0

    .line 27
    const-string v0, "PLEV"

    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendFGSTypeBigData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method
