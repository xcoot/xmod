.class final Lcom/android/server/display/color/ColorDisplayService$BinderService;
.super Landroid/hardware/display/IColorDisplayManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "ColorDisplayService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 21
    .line 22
    invoke-static {p0, p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mdumpInternal(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getColorMode()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final getNightDisplayAutoMode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final getNightDisplayAutoModeRaw()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 10
    .line 11
    const/16 v3, -0x2710

    .line 12
    .line 13
    const/4 v4, -0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string/jumbo v3, "night_display_auto_mode"

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 29
    .line 30
    invoke-static {v2, v3, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return v4

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getNightDisplayColorTemperature()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getReduceBrightColorsOffsetFactor()F
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v2, p0, v2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget v3, p0, v3

    .line 16
    .line 17
    add-float/2addr v2, v3

    .line 18
    const/4 v3, 0x2

    .line 19
    aget p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    add-float/2addr v2, p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final getReduceBrightColorsStrength()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getTransformCapabilities()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const v3, 0x111021c

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    or-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    :cond_0
    const v3, 0x111021d

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    or-int/lit8 v2, v2, 0x4

    .line 48
    .line 49
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    .line 8
    .line 9
    const-string v2, "Permission required to use ADB color transform commands"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    new-instance v2, Lcom/android/server/display/color/ColorDisplayShellCommand;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/android/server/display/color/ColorDisplayShellCommand;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    move-object v3, p0

    .line 38
    move-object v7, p4

    .line 39
    invoke-virtual/range {v2 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final isDeviceColorManaged()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$misDeviceColorManagedInternal(Lcom/android/server/display/color/ColorDisplayService;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final isDisplayWhiteBalanceEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final isNightDisplayActivated()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final isReduceBrightColorsActivated()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final isSaturationActivated()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return p0

    .line 37
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final setAppSaturationLevel(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 25
    .line 26
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(ILjava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final setColorMode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final setDisplayWhiteBalanceEnabled(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 11
    .line 12
    const/16 v3, -0x2710

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 27
    .line 28
    const-string/jumbo v3, "display_white_balance_enabled"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final setNightDisplayActivated(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final setNightDisplayAutoMode(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v2, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 27
    .line 28
    const-string/jumbo v4, "night_display_last_activated_time"

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v3, "night_display_auto_mode"

    .line 44
    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 47
    .line 48
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final setNightDisplayColorTemperature(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget v4, v2, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 29
    .line 30
    const-string/jumbo v5, "night_display_color_temperature"

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v5, p1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return v3

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    mul-int/lit16 p1, p1, 0x3e8

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 31
    .line 32
    const-string/jumbo v3, "night_display_custom_end_time"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    mul-int/lit16 p1, p1, 0x3e8

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 31
    .line 32
    const-string/jumbo v3, "night_display_custom_start_time"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final setReduceBrightColorsActivated(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 11
    .line 12
    const/16 v3, -0x2710

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 27
    .line 28
    const-string/jumbo v3, "reduce_bright_colors_activated"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final setReduceBrightColorsStrength(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 11
    .line 12
    const/16 v3, -0x2710

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string/jumbo v3, "reduce_bright_colors_level"

    .line 27
    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 30
    .line 31
    invoke-static {v2, v3, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final setSaturationLevel(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v3, v1

    .line 37
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string/jumbo v5, "com.samsung.android.permission.SEM_CONTROL_DISPLAY_COLOR_TRANSFORMS"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    move v1, v2

    .line 53
    :cond_2
    if-nez v0, :cond_4

    .line 54
    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    const-string p1, "Permission required to set display saturation level"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    const/4 v4, 0x4

    .line 77
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method
