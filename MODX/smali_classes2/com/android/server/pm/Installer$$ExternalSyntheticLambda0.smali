.class public final synthetic Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Installer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Installer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Installer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Installer"

    .line 7
    .line 8
    const-string v1, "installd died; reconnecting"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
