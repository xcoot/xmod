.class public final Lcom/android/server/DirEncryptServiceHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/server/DirEncryptServiceHelper$1$1;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2}, Lcom/android/server/DirEncryptServiceHelper$1$1;-><init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
