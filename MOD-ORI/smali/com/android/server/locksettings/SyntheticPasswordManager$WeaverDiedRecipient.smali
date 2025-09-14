.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "SyntheticPasswordManager"

    .line 2
    .line 3
    const-string v1, "Weaver service has died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    .line 24
    .line 25
    return-void
.end method
