.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGrantFlags:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mSourceUserId:I

.field public final mTag:Ljava/lang/String;

.field public final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUris:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 12
    .line 13
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 20
    .line 21
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 30
    .line 31
    const-string/jumbo p2, "job: "

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 45
    .line 46
    return-void
.end method

.method public static grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object/from16 v8, p6

    .line 7
    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    move-object/from16 v9, p0

    .line 11
    .line 12
    invoke-virtual {v9, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 13
    .line 14
    .line 15
    move-result-object v10

    .line 16
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move/from16 v3, p1

    .line 27
    .line 28
    move-object/from16 v4, p2

    .line 29
    .line 30
    move/from16 v5, p3

    .line 31
    .line 32
    move/from16 v6, p4

    .line 33
    .line 34
    move-object/from16 v7, p5

    .line 35
    .line 36
    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    :cond_0
    move-object/from16 v17, v8

    .line 41
    .line 42
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    move/from16 v12, p1

    .line 59
    .line 60
    move-object/from16 v13, p2

    .line 61
    .line 62
    move/from16 v14, p3

    .line 63
    .line 64
    move/from16 v15, p4

    .line 65
    .line 66
    move-object/from16 v16, p5

    .line 67
    .line 68
    invoke-static/range {v11 .. v17}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v8, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move-object/from16 v8, v17

    .line 75
    .line 76
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v8
.end method

.method public static grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p6, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/job/GrantedUriPermissions;

    .line 16
    .line 17
    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/job/GrantedUriPermissions;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object p6, v0

    .line 21
    :cond_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p6, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 26
    .line 27
    move v3, p1

    .line 28
    move-object v4, p2

    .line 29
    move-object v5, p0

    .line 30
    move v6, p4

    .line 31
    move v8, p3

    .line 32
    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p6, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string p0, "JobScheduler"

    .line 42
    .line 43
    const-string p1, "AM dead"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object p6
.end method


# virtual methods
.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 9
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 10
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    .line 11
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-wide v2, 0x20900000005L

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3
    const-string/jumbo v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string/jumbo v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final revoke()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/net/Uri;

    .line 20
    .line 21
    iget v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 24
    .line 25
    check-cast v4, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 26
    .line 27
    iget v5, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 28
    .line 29
    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
