.class public final Lcom/android/server/UiModeManagerService$ProjectionHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mPackageName:Ljava/lang/String;

.field public final mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

.field public final mProjectionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    .line 8
    iput-object p3, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    .line 10
    iput-object p4, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "Projection holder "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " died. Releasing projection type "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    .line 22
    const-string v2, "."

    .line 24
    const-string v3, "UiModeManager"

    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;

    .line 31
    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    .line 33
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 35
    iget-object v0, v0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/UiModeManagerService;

    .line 37
    invoke-static {v0, v1, p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    .line 40
    return-void
.end method
