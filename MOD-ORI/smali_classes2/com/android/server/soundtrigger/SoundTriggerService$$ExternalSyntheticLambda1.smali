.class public final synthetic Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/media/permission/Identity;

.field public final synthetic f$3:Landroid/media/permission/Identity;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$2:Landroid/media/permission/Identity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$3:Landroid/media/permission/Identity;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    .line 2
    .line 3
    iget v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$2:Landroid/media/permission/Identity;

    .line 6
    .line 7
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$3:Landroid/media/permission/Identity;

    .line 8
    .line 9
    iget-boolean v8, p0, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;->f$4:Z

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    move-object v1, p0

    .line 26
    invoke-direct/range {v1 .. v8}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method
