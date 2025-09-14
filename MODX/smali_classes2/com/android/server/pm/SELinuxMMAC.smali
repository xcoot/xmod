.class public abstract Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sMacPermissions:Ljava/util/List;

.field public static final sPolicies:Ljava/util/List;

.field public static sPolicyRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "/etc/selinux/plat_mac_permissions.xml"

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/io/File;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "/etc/selinux/system_ext_mac_permissions.xml"

    .line 36
    .line 37
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "/etc/selinux/product_mac_permissions.xml"

    .line 56
    .line 57
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "/etc/selinux/vendor_mac_permissions.xml"

    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 90
    .line 91
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "/etc/selinux/odm_mac_permissions.xml"

    .line 96
    .line 97
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void
.end method

.method public static getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p3, p2, Lcom/android/server/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-wide/32 v1, 0x88e3d87

    .line 4
    invoke-virtual {p3, v1, v2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p3, 0x2710

    .line 5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    .line 6
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0xa0f6c63

    .line 7
    invoke-virtual {p3, v1, v2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x1e

    .line 8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p3

    :goto_0
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/android/server/pm/SharedUserSetting;->isPrivileged()Z

    move-result p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v0

    or-int/2addr p2, v0

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p2

    .line 12
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;ZI)Ljava/lang/String;
    .locals 4

    .line 13
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Policy;

    .line 16
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Policy;->getMatchedSeInfo(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 17
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 18
    const-string v2, "default"

    :cond_3
    if-eqz p2, :cond_4

    .line 19
    const-string p1, ":privapp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_4
    const-string p1, ":targetSdkVersion="

    .line 21
    invoke-static {p3, v2, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    const-string/jumbo p0, "system_ext"

    goto :goto_1

    .line 24
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    const-string/jumbo p0, "product"

    goto :goto_1

    .line 26
    :cond_6
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 27
    const-string/jumbo p0, "vendor"

    goto :goto_1

    .line 28
    :cond_7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 29
    const-string/jumbo p0, "oem"

    goto :goto_1

    .line 30
    :cond_8
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 31
    const-string/jumbo p0, "odm"

    goto :goto_1

    .line 32
    :cond_9
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 33
    const-string/jumbo p0, "system"

    goto :goto_1

    .line 34
    :cond_a
    const-string p0, ""

    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 36
    const-string p2, ":partition="

    .line 37
    invoke-static {p1, p2, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    return-object p1

    .line 38
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static readInstallPolicy()V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v6, v3

    .line 34
    move v5, v4

    .line 35
    :goto_0
    if-ge v5, v2, :cond_5

    .line 36
    .line 37
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 38
    .line 39
    check-cast v7, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/io/File;

    .line 46
    .line 47
    :try_start_1
    new-instance v8, Ljava/io/FileReader;

    .line 48
    .line 49
    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 50
    .line 51
    .line 52
    :try_start_2
    const-string v6, "SELinuxMMAC"

    .line 53
    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v10, "Using policy file "

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 78
    .line 79
    .line 80
    const-string/jumbo v6, "policy"

    .line 81
    .line 82
    .line 83
    const/4 v9, 0x2

    .line 84
    invoke-interface {v1, v9, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/4 v10, 0x3

    .line 92
    if-eq v6, v10, :cond_4

    .line 93
    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eq v6, v9, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    const v11, -0x35ca90d6    # -2972618.5f

    .line 110
    .line 111
    .line 112
    if-eq v10, v11, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const-string/jumbo v10, "signer"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    move-object v6, v8

    .line 134
    goto :goto_5

    .line 135
    :catch_0
    move-exception v0

    .line 136
    move-object v6, v8

    .line 137
    goto :goto_3

    .line 138
    :catch_1
    move-exception v0

    .line 139
    move-object v6, v8

    .line 140
    goto :goto_4

    .line 141
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    move-object v6, v8

    .line 151
    goto :goto_0

    .line 152
    :catchall_2
    move-exception v0

    .line 153
    goto :goto_5

    .line 154
    :catch_2
    move-exception v0

    .line 155
    goto :goto_3

    .line 156
    :catch_3
    move-exception v0

    .line 157
    goto :goto_4

    .line 158
    :goto_3
    :try_start_3
    const-string v1, "SELinuxMMAC"

    .line 159
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v3, "Exception parsing "

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 178
    .line 179
    .line 180
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v3, "Exception @"

    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, " while parsing "

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ":"

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, "SELinuxMMAC"

    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 221
    .line 222
    .line 223
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :goto_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :cond_5
    new-instance v1, Lcom/android/server/pm/PolicyComparator;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-boolean v4, v1, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 237
    .line 238
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    .line 240
    .line 241
    iget-boolean v1, v1, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 242
    .line 243
    if-eqz v1, :cond_6

    .line 244
    .line 245
    const-string v0, "SELinuxMMAC"

    .line 246
    .line 247
    const-string v1, "ERROR! Duplicate entries found parsing mac_permissions.xml files"

    .line 248
    .line 249
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_6
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    .line 254
    .line 255
    monitor-enter v1

    .line 256
    :try_start_5
    move-object v2, v1

    .line 257
    check-cast v2, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 260
    .line 261
    .line 262
    move-object v2, v1

    .line 263
    check-cast v2, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    const/4 v0, 0x1

    .line 269
    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 270
    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 273
    :catchall_3
    move-exception v0

    .line 274
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 275
    throw v0

    .line 276
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    throw v1
.end method

.method public static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "signer"

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v3, "signature"

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x3

    .line 31
    if-eq v4, v5, :cond_e

    .line 32
    .line 33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eq v4, v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string/jumbo v6, "seinfo"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "\\A[\\.\\w]+\\z"

    .line 52
    .line 53
    const-string v9, "Invalid seinfo value "

    .line 54
    .line 55
    const-string/jumbo v10, "value"

    .line 56
    .line 57
    .line 58
    if-eqz v7, :cond_5

    .line 59
    .line 60
    invoke-interface {p0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    iget-object v5, v2, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "Duplicate seinfo tag found"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_3
    :goto_1
    iput-object v4, v2, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p0, v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-static {v9, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_5
    const-string/jumbo v7, "package"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-eqz v11, :cond_c

    .line 118
    .line 119
    invoke-interface {p0, v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v4, "name"

    .line 123
    .line 124
    .line 125
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eq v7, v5, :cond_0

    .line 134
    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eq v7, v0, :cond_6

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_b

    .line 151
    .line 152
    invoke-interface {p0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-eqz v4, :cond_a

    .line 157
    .line 158
    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_a

    .line 163
    .line 164
    if-eqz v7, :cond_9

    .line 165
    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_9

    .line 171
    .line 172
    iget-object v11, v2, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 173
    .line 174
    check-cast v11, Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    check-cast v11, Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v11, :cond_8

    .line 183
    .line 184
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_7

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-string v0, "Conflicting seinfo value found"

    .line 194
    .line 195
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_8
    :goto_3
    iget-object v11, v2, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 200
    .line 201
    check-cast v11, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v11, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-interface {p0, v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_9
    invoke-static {v9, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 218
    .line 219
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_a
    const-string p0, "Invalid package name "

    .line 224
    .line 225
    invoke-static {p0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_b
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_c
    const-string v5, "cert"

    .line 240
    .line 241
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_d

    .line 246
    .line 247
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-interface {p0, v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_d
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_e
    new-instance p0, Lcom/android/server/pm/Policy;

    .line 268
    .line 269
    invoke-direct {p0, v2}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 273
    .line 274
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_11

    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 281
    .line 282
    if-nez v0, :cond_f

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    goto :goto_4

    .line 286
    :cond_f
    const/4 v0, 0x0

    .line 287
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 288
    .line 289
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    xor-int/2addr v0, v1

    .line 294
    if-eqz v0, :cond_10

    .line 295
    .line 296
    return-object p0

    .line 297
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 298
    .line 299
    const-string v0, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    .line 300
    .line 301
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p0

    .line 305
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    const-string v0, "Missing certs with signer tag. Expecting at least one."

    .line 308
    .line 309
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eq v2, v1, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return-void

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
