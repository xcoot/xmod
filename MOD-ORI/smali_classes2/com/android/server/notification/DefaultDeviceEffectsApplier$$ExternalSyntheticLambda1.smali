.class public final synthetic Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x3e9

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p0, 0x3e8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string v0, "DeviceEffectsApplier"

    .line 23
    .line 24
    const-string v1, "Could not change wallpaper override"

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_1
    return-void
.end method
