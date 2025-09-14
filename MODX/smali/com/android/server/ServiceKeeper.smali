.class public final Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUTHORIZE_POLICY_FILE:Ljava/io/File;

.field public static filteredAPIs:Ljava/util/ArrayList;

.field public static isActive:Z

.field public static final loadFilesLockObject:Ljava/lang/Object;

.field public static mASKS:Lcom/android/server/asks/ASKSManagerService;

.field public static mPm:Landroid/content/pm/IPackageManager;

.field public static final mSKLog:Lcom/android/server/SKLogger;

.field public static openMethodCache:Ljava/util/HashSet;

.field public static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field public static serviceTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "/etc/selinux/sk/authorize.xml"

    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    sput-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    .line 15
    sget-object v1, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/android/server/ServiceKeeper;->loadFromAuthorizeFile(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    monitor-exit v0

    .line 26
    return v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public static checkForMethodAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, " packageName = "

    .line 6
    const-string v3, " seInfo = "

    .line 8
    const-string v4, " method = "

    .line 10
    const-string v5, "ServiceKeeper"

    .line 12
    if-nez v0, :cond_0

    .line 14
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 16
    const-string v6, "Checking the method : ServiceTable is Null: service =  "

    .line 18
    invoke-static {v6, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return v1

    .line 42
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 54
    const-string v6, "Checking the method: Service is not in service keeper: service =  "

    .line 56
    invoke-static {v6, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return v1

    .line 80
    :cond_2
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/server/ServiceObject;

    .line 88
    iget-boolean v6, v0, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 90
    if-eqz v6, :cond_4

    .line 92
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 94
    if-eqz v0, :cond_3

    .line 96
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 98
    const-string v6, "Checking the method: Service is sterile : service =  "

    .line 100
    invoke-static {v6, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    return v1

    .line 124
    :cond_4
    iget-object v0, v0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 126
    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 130
    if-nez v6, :cond_6

    .line 132
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 134
    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 138
    const-string v6, "Checking the method: Method not in service: service =  "

    .line 140
    invoke-static {v6, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_5
    return v1

    .line 164
    :cond_6
    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/android/server/MethodPermissionPackage;

    .line 170
    iget-boolean v6, v0, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 172
    if-eqz v6, :cond_8

    .line 174
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 176
    if-eqz v0, :cond_7

    .line 178
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 180
    const-string v6, "Checking the method: Method is sterile: service =  "

    .line 182
    invoke-static {v6, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_7
    return v1

    .line 206
    :cond_8
    iget-object v6, v0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 208
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 211
    move-result v6

    .line 212
    const/4 v7, 0x1

    .line 213
    if-eqz v6, :cond_9

    .line 215
    return v7

    .line 216
    :cond_9
    iget-object v0, v0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 218
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 221
    move-result-object v0

    .line 222
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_c

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    move-result-object v6

    .line 232
    check-cast v6, Lcom/android/server/PackageObject;

    .line 234
    iget-object v8, v6, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 236
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_a

    .line 242
    iget-object v6, v6, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 244
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_a

    .line 250
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 252
    if-eqz v0, :cond_b

    .line 254
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 256
    const-string v1, "Checking the method: Package Name Match: service =  "

    .line 258
    invoke-static {v1, p0, v4, p3, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    invoke-static {v5, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_b
    return v7

    .line 282
    :cond_c
    return v1
.end method

.method public static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    return v1

    .line 14
    :cond_1
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/ServiceObject;

    .line 22
    iget-boolean v0, p0, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    return v1

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 29
    iget-object v0, p0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_3

    .line 38
    return v2

    .line 39
    :cond_3
    iget-object p0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 41
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 45
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/PackageObject;

    .line 57
    iget-object v3, v0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 65
    iget-object v0, v0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 73
    return v2

    .line 74
    :cond_5
    return v1
.end method

.method public static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .locals 18

    .line 1
    :try_start_0
    const-string/jumbo v0, "service"

    .line 4
    move-object/from16 v1, p0

    .line 6
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    move-object v1, v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Exception in getting service list"

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v2, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    const-class v2, Lcom/android/server/ServiceKeeper;

    .line 43
    monitor-enter v2

    .line 44
    :try_start_1
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 46
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    .line 50
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 53
    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_11

    .line 59
    :cond_0
    :goto_2
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v2

    .line 62
    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 64
    const-class v2, Lcom/android/server/ServiceKeeper;

    .line 66
    monitor-enter v2

    .line 67
    :try_start_2
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 69
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 73
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 78
    goto :goto_3

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    goto/16 :goto_10

    .line 82
    :cond_1
    :goto_3
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    monitor-exit v2

    .line 85
    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 87
    const/4 v2, 0x1

    .line 88
    if-eqz v1, :cond_10

    .line 90
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 93
    move-result v0

    .line 94
    if-lez v0, :cond_10

    .line 96
    const/4 v3, 0x0

    .line 97
    move v4, v3

    .line 98
    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 101
    move-result v0

    .line 102
    if-ge v4, v0, :cond_10

    .line 104
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lorg/w3c/dom/Element;

    .line 110
    new-instance v5, Lcom/android/server/ServiceObject;

    .line 112
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v6, Lcom/android/server/PermissionPackage;

    .line 117
    invoke-direct {v6}, Lcom/android/server/PermissionPackage;-><init>()V

    .line 120
    iput-object v6, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 122
    new-instance v6, Ljava/util/Hashtable;

    .line 124
    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 127
    iput-object v6, v5, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 129
    iput-boolean v2, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 131
    :try_start_3
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 134
    move-result-object v6

    .line 135
    const-string/jumbo v7, "name"

    .line 138
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 141
    move-result-object v6

    .line 142
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 145
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    const-string v7, "FilteredAPIs"

    .line 148
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_4

    .line 154
    const-string/jumbo v5, "method"

    .line 157
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 164
    move-result v6

    .line 165
    if-lez v6, :cond_3

    .line 167
    move v6, v3

    .line 168
    :goto_5
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 171
    move-result v7

    .line 172
    if-ge v6, v7, :cond_3

    .line 174
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 177
    move-result-object v7

    .line 178
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 181
    move-result v7

    .line 182
    if-ne v7, v2, :cond_2

    .line 184
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 187
    move-result-object v7

    .line 188
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 191
    move-result-object v7

    .line 192
    invoke-interface {v7, v0}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_2

    .line 198
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 201
    move-result-object v7

    .line 202
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 205
    move-result-object v7

    .line 206
    const-string/jumbo v8, "name"

    .line 209
    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 212
    move-result-object v7

    .line 213
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 216
    move-result-object v7

    .line 217
    sget-object v8, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 224
    goto :goto_5

    .line 225
    :cond_3
    move-object/from16 v16, v1

    .line 227
    move v1, v3

    .line 228
    goto/16 :goto_f

    .line 230
    :cond_4
    const-string/jumbo v7, "seinfo"

    .line 233
    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 236
    move-result-object v7

    .line 237
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 240
    move-result v8

    .line 241
    if-lez v8, :cond_6

    .line 243
    iput-boolean v3, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 245
    move v8, v3

    .line 246
    :goto_6
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 249
    move-result v9

    .line 250
    if-ge v8, v9, :cond_6

    .line 252
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 255
    move-result-object v9

    .line 256
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 259
    move-result v9

    .line 260
    if-ne v9, v2, :cond_5

    .line 262
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 265
    move-result-object v9

    .line 266
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 269
    move-result-object v9

    .line 270
    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    .line 273
    move-result v9

    .line 274
    if-eqz v9, :cond_5

    .line 276
    iget-object v9, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 278
    iget-object v9, v9, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 280
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 283
    move-result-object v10

    .line 284
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 287
    move-result-object v10

    .line 288
    const-string/jumbo v11, "value"

    .line 291
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 294
    move-result-object v10

    .line 295
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 298
    move-result-object v10

    .line 299
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 304
    goto :goto_6

    .line 305
    :cond_6
    const-string/jumbo v7, "package"

    .line 308
    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 311
    move-result-object v7

    .line 312
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 315
    move-result v8

    .line 316
    if-lez v8, :cond_8

    .line 318
    iput-boolean v3, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 320
    move v8, v3

    .line 321
    :goto_7
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 324
    move-result v9

    .line 325
    if-ge v8, v9, :cond_8

    .line 327
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 330
    move-result-object v9

    .line 331
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 334
    move-result v9

    .line 335
    if-ne v9, v2, :cond_7

    .line 337
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 340
    move-result-object v9

    .line 341
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 344
    move-result-object v9

    .line 345
    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    .line 348
    move-result v9

    .line 349
    if-eqz v9, :cond_7

    .line 351
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 354
    move-result-object v9

    .line 355
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 358
    move-result-object v9

    .line 359
    const-string/jumbo v10, "name"

    .line 362
    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 365
    move-result-object v9

    .line 366
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 369
    move-result-object v9

    .line 370
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 373
    move-result-object v10

    .line 374
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 377
    move-result-object v10

    .line 378
    const-string/jumbo v11, "seinfo"

    .line 381
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 384
    move-result-object v10

    .line 385
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 388
    move-result-object v10

    .line 389
    new-instance v11, Lcom/android/server/PackageObject;

    .line 391
    invoke-direct {v11, v9, v10}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v9, v5, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 396
    iget-object v9, v9, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 398
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 403
    goto :goto_7

    .line 404
    :cond_8
    const-string/jumbo v7, "method"

    .line 407
    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 410
    move-result-object v7

    .line 411
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 414
    move-result v0

    .line 415
    if-lez v0, :cond_e

    .line 417
    iput-boolean v3, v5, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 419
    const-string v8, "ServiceKeeper"

    .line 421
    const-string/jumbo v9, "name"

    .line 424
    move v10, v3

    .line 425
    :goto_8
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 428
    move-result v0

    .line 429
    if-ge v10, v0, :cond_e

    .line 431
    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Lorg/w3c/dom/Element;

    .line 437
    new-instance v11, Lcom/android/server/MethodPermissionPackage;

    .line 439
    invoke-direct {v11}, Lcom/android/server/PermissionPackage;-><init>()V

    .line 442
    iput-boolean v2, v11, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 444
    :try_start_4
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 447
    move-result-object v12

    .line 448
    invoke-interface {v12, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 451
    move-result-object v12

    .line 452
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 455
    move-result-object v12
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 456
    const-string/jumbo v13, "seinfo"

    .line 459
    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 462
    move-result-object v14

    .line 463
    if-eqz v14, :cond_b

    .line 465
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 468
    move-result v15

    .line 469
    if-lez v15, :cond_b

    .line 471
    iput-boolean v3, v11, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 473
    move v15, v3

    .line 474
    :goto_9
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 477
    move-result v2

    .line 478
    if-ge v15, v2, :cond_b

    .line 480
    iget-object v2, v11, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 482
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 485
    move-result-object v16

    .line 486
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 489
    move-result-object v3

    .line 490
    move-object/from16 v16, v1

    .line 492
    const-string/jumbo v1, "value"

    .line 495
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 498
    move-result-object v3

    .line 499
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 509
    move-result-object v2

    .line 510
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 513
    move-result-object v2

    .line 514
    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 517
    move-result-object v1

    .line 518
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 522
    const-string v2, "_open"

    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_a

    .line 530
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 532
    const-string v2, ":"

    .line 534
    if-eqz v1, :cond_9

    .line 536
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    .line 540
    move-object/from16 v17, v7

    .line 542
    const-string v7, "Adding open method entry - "

    .line 544
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    invoke-static {v8, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    goto :goto_a

    .line 567
    :cond_9
    move-object/from16 v17, v7

    .line 569
    :goto_a
    sget-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    .line 573
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    move-result-object v2

    .line 589
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    goto :goto_b

    .line 593
    :cond_a
    move-object/from16 v17, v7

    .line 595
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 597
    move-object/from16 v1, v16

    .line 599
    move-object/from16 v7, v17

    .line 601
    const/4 v3, 0x0

    .line 602
    goto :goto_9

    .line 603
    :cond_b
    move-object/from16 v16, v1

    .line 605
    move-object/from16 v17, v7

    .line 607
    const-string/jumbo v1, "package"

    .line 610
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 613
    move-result-object v0

    .line 614
    if-eqz v0, :cond_c

    .line 616
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 619
    move-result v1

    .line 620
    if-lez v1, :cond_c

    .line 622
    const/4 v1, 0x0

    .line 623
    iput-boolean v1, v11, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    .line 625
    const/4 v1, 0x0

    .line 626
    :goto_c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 629
    move-result v2

    .line 630
    if-ge v1, v2, :cond_c

    .line 632
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 635
    move-result-object v2

    .line 636
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 639
    move-result-object v2

    .line 640
    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 643
    move-result-object v2

    .line 644
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 647
    move-result-object v2

    .line 648
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 651
    move-result-object v3

    .line 652
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 655
    move-result-object v3

    .line 656
    invoke-interface {v3, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 659
    move-result-object v3

    .line 660
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 663
    move-result-object v3

    .line 664
    new-instance v7, Lcom/android/server/PackageObject;

    .line 666
    invoke-direct {v7, v2, v3}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v2, v11, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 671
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v1, v1, 0x1

    .line 676
    goto :goto_c

    .line 677
    :cond_c
    iget-object v0, v5, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 679
    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    move-result-object v0

    .line 683
    if-eqz v0, :cond_d

    .line 685
    goto :goto_e

    .line 686
    :cond_d
    iget-object v0, v5, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 688
    invoke-virtual {v0, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    goto :goto_d

    .line 692
    :catch_1
    move-exception v0

    .line 693
    move-object/from16 v16, v1

    .line 695
    move-object/from16 v17, v7

    .line 697
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    .line 701
    const-string v3, "Exception in getting method name"

    .line 703
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 709
    move-result-object v3

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    move-result-object v2

    .line 717
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    invoke-static {v2, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 723
    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 725
    move-object/from16 v1, v16

    .line 727
    move-object/from16 v7, v17

    .line 729
    const/4 v2, 0x1

    .line 730
    const/4 v3, 0x0

    .line 731
    goto/16 :goto_8

    .line 733
    :cond_e
    move-object/from16 v16, v1

    .line 735
    :goto_e
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 737
    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    move-result-object v0

    .line 741
    if-eqz v0, :cond_f

    .line 743
    const/4 v1, 0x0

    .line 744
    return v1

    .line 745
    :cond_f
    const/4 v1, 0x0

    .line 746
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 748
    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    goto :goto_f

    .line 752
    :catch_2
    move-exception v0

    .line 753
    move-object/from16 v16, v1

    .line 755
    move v1, v3

    .line 756
    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    .line 760
    const-string v5, "Exception in getting service name"

    .line 762
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    .line 768
    move-result-object v5

    .line 769
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    move-result-object v3

    .line 776
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    invoke-static {v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 784
    move v3, v1

    .line 785
    move-object/from16 v1, v16

    .line 787
    const/4 v2, 0x1

    .line 788
    goto/16 :goto_4

    .line 790
    :cond_10
    move v1, v2

    .line 791
    return v1

    .line 792
    :goto_10
    monitor-exit v2

    .line 793
    throw v0

    .line 794
    :goto_11
    monitor-exit v2

    .line 795
    throw v0
.end method

.method public static declared-synchronized getServiceKeeper()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/ServiceKeeper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/ServiceKeeper;

    .line 10
    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    const-string/jumbo v2, "package"

    .line 16
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Lcom/android/server/ServiceKeeper;->mPm:Landroid/content/pm/IPackageManager;

    .line 26
    const-string v2, "asks"

    .line 28
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/asks/ASKSManagerService;

    .line 34
    sput-object v2, Lcom/android/server/ServiceKeeper;->mASKS:Lcom/android/server/asks/ASKSManagerService;

    .line 36
    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0

    .line 44
    throw v1
.end method

.method public static isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    .line 1
    move/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    move-object/from16 v3, p3

    .line 7
    move-object/from16 v4, p4

    .line 9
    const-string v5, ":"

    .line 11
    const-string v6, "Checking the permission : pkgName = "

    .line 13
    const/4 v7, -0x1

    .line 14
    const-string v8, "ServiceKeeper"

    .line 16
    if-eqz v4, :cond_0

    .line 18
    if-nez v3, :cond_1

    .line 20
    :cond_0
    move v1, v7

    .line 21
    goto/16 :goto_d

    .line 23
    :cond_1
    const/4 v9, 0x0

    .line 24
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 33
    move-result v0

    .line 34
    if-ne v1, v0, :cond_2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 39
    if-eqz v0, :cond_4

    .line 41
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 47
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 49
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 70
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz v0, :cond_4

    .line 73
    return v9

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    return v9

    .line 77
    :goto_1
    sget-object v10, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 79
    new-instance v11, Ljava/lang/StringBuilder;

    .line 81
    const-string v12, "Exception in getting from openCache"

    .line 83
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_4
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 105
    if-nez v0, :cond_5

    .line 107
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    const-string v0, "The Service Keeper isn\'t prepared"

    .line 114
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v7

    .line 118
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    move-result-wide v10

    .line 122
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 125
    move-result v0

    .line 126
    const-string/jumbo v13, "occurs exception"

    .line 129
    if-ne v1, v0, :cond_6

    .line 131
    const-string v0, "android"

    .line 133
    :goto_2
    move-object v14, v0

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    :try_start_1
    const-string v0, "activity"

    .line 137
    move-object/from16 v14, p2

    .line 139
    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 148
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    goto :goto_2

    .line 150
    :catch_1
    move-exception v0

    .line 151
    sget-object v14, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 153
    new-instance v15, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    .line 176
    goto :goto_2

    .line 177
    :goto_3
    const-string/jumbo v15, "pid = "

    .line 180
    const-string v12, " uid = "

    .line 182
    const-string v9, " method = "

    .line 184
    if-nez v14, :cond_8

    .line 186
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->isFilterAPI(Ljava/lang/String;)Z

    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_7

    .line 195
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 197
    const-string v5, "Checking the permission : Package Name is returned with null : Exiting : service =  "

    .line 199
    invoke-static {v5, v3, v9, v4, v12}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-static {v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_7
    return v7

    .line 223
    :cond_8
    const-string/jumbo v0, "seinfo of "

    .line 226
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 229
    move-result v7

    .line 230
    :try_start_2
    sget-object v1, Lcom/android/server/ServiceKeeper;->mPm:Landroid/content/pm/IPackageManager;

    .line 232
    const-wide/16 v2, 0x0

    .line 234
    invoke-interface {v1, v14, v2, v3, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 237
    move-result-object v1

    .line 238
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 240
    :try_start_3
    sget-object v2, Lcom/android/server/ServiceKeeper;->mASKS:Lcom/android/server/asks/ASKSManagerService;

    .line 242
    invoke-virtual {v2, v14}, Lcom/android/server/asks/ASKSManagerService;->getSEInfo(Ljava/lang/String;)[B

    .line 245
    move-result-object v2

    .line 246
    if-eqz v2, :cond_a

    .line 248
    new-instance v3, Ljava/lang/String;

    .line 250
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    :try_start_4
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 255
    if-eqz v1, :cond_9

    .line 257
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, " is changed by AASA"

    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 282
    goto :goto_5

    .line 283
    :catch_2
    move-exception v0

    .line 284
    goto :goto_4

    .line 285
    :catch_3
    move-exception v0

    .line 286
    move-object v3, v1

    .line 287
    goto :goto_4

    .line 288
    :catch_4
    move-object v3, v1

    .line 289
    goto :goto_6

    .line 290
    :catch_5
    move-exception v0

    .line 291
    const/4 v3, 0x0

    .line 292
    goto :goto_4

    .line 293
    :catch_6
    const/4 v3, 0x0

    .line 294
    goto :goto_6

    .line 295
    :goto_4
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_9
    :goto_5
    move-object v1, v3

    .line 320
    goto :goto_7

    .line 321
    :catch_7
    :goto_6
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    const-string/jumbo v0, "get App Info: failed"

    .line 329
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    goto :goto_5

    .line 333
    :cond_a
    :goto_7
    const-string v2, "Checking the permission : occurs exception"

    .line 335
    if-eqz v1, :cond_c

    .line 337
    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_c

    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    .line 349
    if-eqz v3, :cond_b

    .line 351
    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    .line 355
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v6, ", seInfo = "

    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, ", orgSeinfo[0] = "

    .line 371
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v1, 0x0

    .line 375
    aget-object v6, v0, v1

    .line 377
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    invoke-static {v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_b
    const/4 v1, 0x0

    .line 391
    goto :goto_8

    .line 392
    :catch_8
    move-exception v0

    .line 393
    goto :goto_9

    .line 394
    :goto_8
    aget-object v0, v0, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 396
    move-object v1, v0

    .line 397
    goto :goto_a

    .line 398
    :goto_9
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v1, -0x1

    .line 423
    return v1

    .line 424
    :cond_c
    :goto_a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    move-object/from16 v3, p3

    .line 429
    :try_start_6
    invoke-static {v3, v1, v14}, Lcom/android/server/ServiceKeeper;->checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_d

    .line 435
    invoke-static {v3, v1, v14, v4}, Lcom/android/server/ServiceKeeper;->checkForMethodAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 438
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 439
    if-eqz v0, :cond_e

    .line 441
    :cond_d
    const/4 v1, 0x0

    .line 442
    goto :goto_b

    .line 443
    :catch_9
    move-exception v0

    .line 444
    goto :goto_c

    .line 445
    :goto_b
    return v1

    .line 446
    :goto_c
    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    .line 450
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->isFilterAPI(Ljava/lang/String;)Z

    .line 473
    move-result v0

    .line 474
    if-nez v0, :cond_f

    .line 476
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 478
    const-string v2, "Checking the permission : No match found : Exiting : service =  "

    .line 480
    invoke-static {v2, v3, v9, v4, v12}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    move-result-object v2

    .line 484
    const-string v3, " pkgName = "

    .line 486
    move/from16 v4, p0

    .line 488
    move/from16 v5, p1

    .line 490
    invoke-static {v5, v4, v15, v3, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 493
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v3, " seinfo = "

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    invoke-static {v8, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_f
    const/4 v1, -0x1

    .line 515
    return v1

    .line 516
    :goto_d
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    const-string v0, "Checking the permission : service is null or method is null"

    .line 523
    invoke-static {v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return v1
.end method

.method public static isFilterAPI(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 11
    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v2, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    const-string v3, "Checking the filtered api : occurs errors."

    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const-string v1, "ServiceKeeper"

    .line 56
    invoke-static {v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    return v0
.end method

.method public static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 11
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    .line 29
    const-string/jumbo v1, "policy"

    .line 32
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lorg/w3c/dom/Element;

    .line 42
    invoke-static {p0}, Lcom/android/server/ServiceKeeper;->createAuthorizationTables(Lorg/w3c/dom/Element;)Z

    .line 45
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-nez p0, :cond_1

    .line 48
    return v0

    .line 49
    :cond_1
    const/4 p0, 0x1

    .line 50
    sput-boolean p0, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 52
    return p0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v3, "loadFromAuthorizeFile occurs exception"

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const-string v1, "ServiceKeeper"

    .line 80
    invoke-static {v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v0
.end method
