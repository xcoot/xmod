.class public final synthetic Lcom/android/internal/protolog/ProtoLogImpl_324116711$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_ERROR_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v2, p0, v3

    .line 2
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v4

    const/4 v5, 0x1

    aput-boolean v4, p0, v5

    .line 3
    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v6

    const/4 v7, 0x2

    aput-boolean v6, p0, v7

    .line 4
    sget-object v6, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v8

    const/4 v9, 0x3

    aput-boolean v8, p0, v9

    .line 5
    sget-object v8, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v10

    const/4 v11, 0x4

    aput-boolean v10, p0, v11

    .line 6
    sget-object v10, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    const/4 v12, 0x5

    aput-boolean v0, p0, v12

    .line 7
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 8
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 9
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 10
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 11
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 12
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 13
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 14
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 15
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 16
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 17
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 18
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 19
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BOOT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 20
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 21
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 22
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 23
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 24
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 25
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 26
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 27
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 28
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 29
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 30
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 31
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 32
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 33
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 34
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 35
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 36
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 37
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 38
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 39
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 40
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 41
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 42
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 43
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 44
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 45
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 46
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 47
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 48
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 49
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 50
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 51
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 52
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 53
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 54
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 55
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 56
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 57
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 58
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 59
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 60
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 61
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 62
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 63
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 64
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 65
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 66
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 67
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 68
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 69
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 70
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 71
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 72
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 73
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 74
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 75
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 76
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 77
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 78
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 79
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TASKS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 80
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 81
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 82
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 83
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 84
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 85
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 86
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 87
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 88
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 89
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 90
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 91
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 92
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 93
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 94
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 95
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 96
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 97
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 98
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 99
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 100
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 101
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 102
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 103
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 104
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 105
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 106
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 107
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 108
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 109
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 110
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 111
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 112
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 113
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 114
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 115
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 116
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 117
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 118
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 119
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 120
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 121
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 122
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 123
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 124
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 125
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 126
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 127
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DRAW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 128
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 129
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 130
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 131
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 132
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 133
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 134
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 135
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 136
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 137
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 138
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 139
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 140
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 141
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 142
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 143
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 144
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 145
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 146
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 147
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 148
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 149
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 150
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 151
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 152
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 153
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 154
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 155
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 156
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 157
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 158
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 159
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 160
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 161
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 162
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 163
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 164
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 165
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 166
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 167
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 168
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 169
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 170
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 171
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 172
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 173
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 174
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 175
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 176
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 177
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 178
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 179
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 180
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 181
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 182
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 183
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 184
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 185
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 186
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 187
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 188
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 189
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 190
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 191
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 192
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 193
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 194
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 195
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 196
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 197
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 198
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 199
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 200
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 201
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 202
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 203
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 204
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 205
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 206
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 207
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 208
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 209
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 210
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 211
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DREAM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 212
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 213
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 214
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 215
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 216
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 217
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 218
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 219
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 220
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 221
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 222
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 223
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TPL_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 224
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 225
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 226
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 227
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 228
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 229
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 230
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 231
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 232
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 233
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 234
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 235
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 236
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 237
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 238
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 239
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 240
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 241
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 242
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 243
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 244
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 245
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 246
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 247
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_BOOT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 248
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 249
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 250
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 251
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 252
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 253
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_RESIZE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 254
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 255
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 256
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 257
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 258
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 259
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 260
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 261
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 262
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 263
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 264
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 265
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_CONFIGURATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 266
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 267
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 268
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 269
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 270
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 271
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_FOCUS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 272
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 273
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 274
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 275
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 276
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 277
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_STARTING_WINDOW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 278
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 279
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 280
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 281
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 282
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 283
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_SHOW_TRANSACTIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 284
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 285
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 286
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 287
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 288
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 289
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 290
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 291
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 292
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 293
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 294
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 295
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 296
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 297
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 298
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 299
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 300
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 301
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 302
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 303
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 304
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 305
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 306
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 307
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 308
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 309
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 310
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 311
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 312
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 313
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_DRAW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 314
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 315
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 316
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 317
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 318
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 319
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 320
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 321
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 322
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 323
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 324
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 325
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 326
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 327
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 328
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 329
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 330
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 331
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 332
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 333
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 334
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 335
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 336
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 337
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 338
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 339
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 340
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 341
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 342
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 343
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_IME_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 344
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 345
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 346
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 347
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 348
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 349
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 350
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 351
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 352
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 353
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 354
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 355
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 356
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 357
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 358
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 359
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 360
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 361
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_SYNC_ENGINE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 362
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 363
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 364
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 365
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 366
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 367
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_INPUT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    .line 368
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    .line 369
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    .line 370
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    .line 371
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    .line 372
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    .line 373
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->TEST_GROUP_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v3

    .line 374
    invoke-static {v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v5

    .line 375
    invoke-static {v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v7

    .line 376
    invoke-static {v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v9

    .line 377
    invoke-static {v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v11

    .line 378
    invoke-static {v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    return-void
.end method
