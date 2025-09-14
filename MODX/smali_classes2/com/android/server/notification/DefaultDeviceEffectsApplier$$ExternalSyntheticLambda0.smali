.class public final synthetic Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

.field public final synthetic f$1:Landroid/service/notification/ZenDeviceEffects;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenDeviceEffects;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/ZenDeviceEffects;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const-string v4, "DeviceEffectsApplier"

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 22
    .line 23
    const-string v3, "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    const-string v3, "Could not change AOD override"

    .line 35
    .line 36
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eq v2, v3, :cond_2

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/16 v3, 0x64

    .line 64
    .line 65
    :goto_1
    invoke-virtual {v2, v3}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_1
    move-exception v2

    .line 70
    const-string v3, "Could not change grayscale override"

    .line 71
    .line 72
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eq v2, v3, :cond_4

    .line 86
    .line 87
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    const v3, 0x3f19999a    # 0.6f

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    const/4 v3, 0x0

    .line 102
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catch_2
    move-exception v2

    .line 107
    const-string v3, "Could not change wallpaper override"

    .line 108
    .line 109
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_4
    iget-object v2, v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eq v2, v3, :cond_5

    .line 123
    .line 124
    :try_start_3
    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, p0, v1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateOrScheduleNightMode(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catch_3
    move-exception p0

    .line 133
    const-string v0, "Could not change dark theme override"

    .line 134
    .line 135
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_5
    return-void
.end method
