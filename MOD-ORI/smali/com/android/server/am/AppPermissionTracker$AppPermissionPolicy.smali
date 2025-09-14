.class public final Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;


# instance fields
.field public volatile mBgPermissionsInMonitor:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "android.permission.RECORD_AUDIO"

    .line 2
    .line 3
    const-string v5, "android:record_audio"

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 6
    .line 7
    const-string v1, "android:fine_location"

    .line 8
    .line 9
    const-string v2, "android.permission.CAMERA"

    .line 10
    .line 11
    const-string v3, "android:camera"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    div-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [Landroid/util/Pair;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    :try_start_0
    aget-object v3, p0, v1

    .line 12
    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    aget-object v3, p0, v1

    .line 22
    .line 23
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 24
    .line 25
    aget-object v5, p0, v4

    .line 26
    .line 27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    aget-object v4, p0, v4

    .line 36
    .line 37
    invoke-static {v4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :catch_0
    add-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "APP PERMISSION TRACKER POLICY SETTINGS:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "  "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "bg_permission_in_monitor"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 p2, 0x3d

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x5b

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-ge p2, v0, :cond_3

    .line 49
    .line 50
    const/16 v0, 0x2c

    .line 51
    .line 52
    if-lez p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 58
    .line 59
    aget-object v1, v1, p2

    .line 60
    .line 61
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, -0x1

    .line 82
    if-eq v0, v2, :cond_2

    .line 83
    .line 84
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/16 p0, 0x5d

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(C)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "bg_permission_in_monitor"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/am/AppPermissionTracker;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateBgPermissionsInMonitor()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "activity_manager"

    .line 3
    .line 4
    const-string v2, "bg_permission_in_monitor"

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, ","

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
