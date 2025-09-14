.class public final Lcom/android/server/input/InputManagerService$VibratorToken;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceId:I

.field public final mToken:Landroid/os/IBinder;

.field public final mTokenValue:I

.field public mVibrating:Z

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    .line 10
    iput p4, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "InputManager"

    .line 7
    const-string v1, "Vibrator token died."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    .line 14
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 17
    return-void
.end method
