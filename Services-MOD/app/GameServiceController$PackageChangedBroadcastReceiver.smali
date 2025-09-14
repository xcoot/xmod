.class public final Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/app/GameServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->this$0:Lcom/android/server/app/GameServiceController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->mPackageName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->mPackageName:Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;->this$0:Lcom/android/server/app/GameServiceController;

    .line 20
    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance p2, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {p2, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    .line 27
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
