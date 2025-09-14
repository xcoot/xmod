.class public final Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mForceSurfaceControl:Z

.field public final mIsFirstDisplay:Z

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field public final mUseSurfaceControlBrightness:Z


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 9
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 20
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 22
    invoke-static {p4, p5}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 25
    move-result-object p3

    .line 26
    if-eqz p3, :cond_0

    .line 28
    iget-boolean p3, p3, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 30
    if-eqz p3, :cond_0

    .line 32
    const/4 p3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p3, v0

    .line 35
    :goto_0
    const-class p4, Lcom/android/server/lights/LightsManager;

    .line 37
    if-nez p1, :cond_1

    .line 39
    if-eqz p2, :cond_1

    .line 41
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    .line 56
    if-eqz p3, :cond_2

    .line 58
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 64
    const/16 p2, 0x9

    .line 66
    invoke-virtual {p1, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 76
    :goto_1
    return-void
.end method


# virtual methods
.method public final setBacklight(FFFFII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 3
    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 12
    if-eqz p0, :cond_7

    .line 14
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 20
    const-string p0, "LightsService"

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string p2, "Brightness is not valid: "

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto/16 :goto_3

    .line 41
    :cond_1
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 45
    move-result p1

    .line 46
    const/16 p2, 0xff

    .line 48
    if-gt p1, p2, :cond_2

    .line 50
    and-int/lit16 p1, p1, 0xff

    .line 52
    shl-int/lit8 p2, p1, 0x10

    .line 54
    const/high16 p3, -0x1000000

    .line 56
    or-int/2addr p2, p3

    .line 57
    shl-int/lit8 p3, p1, 0x8

    .line 59
    or-int/2addr p2, p3

    .line 60
    or-int/2addr p1, p2

    .line 61
    :cond_2
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 65
    monitor-exit p0

    .line 66
    goto/16 :goto_3

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 73
    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 79
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 81
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {p0, p3}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    .line 89
    goto/16 :goto_3

    .line 91
    :cond_4
    const-string v0, "LocalDisplayAdapter"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "surface lcd : "

    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p3, p5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, ", "

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p1, p6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, ", "

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 127
    if-eqz v2, :cond_5

    .line 129
    const-string/jumbo v2, "main"

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const-string/jumbo v2, "sub"

    .line 136
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, " +"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 153
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    .line 161
    const-string p2, "LocalDisplayAdapter"

    .line 163
    new-instance p4, Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v0, "surface lcd : "

    .line 168
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {p3, p5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 174
    move-result-object p3

    .line 175
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string p3, ", "

    .line 180
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p1, p6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string p1, ", "

    .line 192
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 197
    if-eqz p0, :cond_6

    .line 199
    const-string/jumbo p0, "main"

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    const-string/jumbo p0, "sub"

    .line 206
    :goto_2
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string p0, " -"

    .line 211
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 218
    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_7
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "BacklightAdapter [useSurfaceControl="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " (force_anyway? "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "), backlight="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string p0, "]"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
