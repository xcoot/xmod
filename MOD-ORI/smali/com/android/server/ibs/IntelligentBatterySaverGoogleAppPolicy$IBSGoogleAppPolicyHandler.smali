.class public final Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
