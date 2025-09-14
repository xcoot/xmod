.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v3, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 13
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 18
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 23
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 28
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "package"

    .line 34
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 39
    new-instance v1, Lcom/android/server/location/gnss/GnssVisibilityControl$1;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;)V

    .line 44
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method
