.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder$DeathRecipient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;->f$0:Landroid/os/IBinder$DeathRecipient;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
