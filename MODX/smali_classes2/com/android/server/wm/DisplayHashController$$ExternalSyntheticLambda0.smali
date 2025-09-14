.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/DisplayHashController$Command;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController;

.field public final synthetic f$1:Landroid/hardware/HardwareBuffer;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/HardwareBuffer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$4:Landroid/os/RemoteCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/HardwareBuffer;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$4:Landroid/os/RemoteCallback;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Landroid/service/displayhash/IDisplayHashingService;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
