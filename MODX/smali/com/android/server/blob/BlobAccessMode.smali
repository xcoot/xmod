.class public final Lcom/android/server/blob/BlobAccessMode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessType:I

.field public final mAllowedPackages:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 7
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 14
    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    .line 3
    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    .line 6
    const-string/jumbo v1, "t"

    .line 9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    iput v1, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    move-result v1

    .line 19
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 25
    const-string/jumbo v2, "wl"

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v2, "p"

    .line 41
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    const-string/jumbo v3, "ct"

    .line 48
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    .line 51
    move-result-object v3

    .line 52
    iget v4, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 54
    or-int/lit8 v4, v4, 0x8

    .line 56
    iput v4, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 58
    iget-object v4, v0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 60
    new-instance v5, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 62
    invoke-direct {v5, v2, v3}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 65
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "accessType: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 10
    int-to-long v1, v1

    .line 11
    const-class v3, Lcom/android/server/blob/BlobAccessMode;

    .line 13
    const-string v4, "ACCESS_TYPE_"

    .line 15
    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string v0, "Explicitly allowed pkgs:"

    .line 31
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 36
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    const-string p0, " (Empty)"

    .line 44
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 51
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 53
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 62
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 68
    invoke-virtual {v2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 81
    :goto_1
    return-void
.end method

.method public final isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 26
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 28
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 30
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p3, p4}, Lcom/android/server/pm/Computer;->checkUidSignaturesForAllUsers(II)I

    .line 37
    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez p4, :cond_1

    .line 40
    move p4, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p4, v1

    .line 43
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    if-eqz p4, :cond_2

    .line 48
    return v2

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0

    .line 54
    :cond_2
    iget p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 56
    and-int/lit8 p4, p4, 0x8

    .line 58
    if-eqz p4, :cond_4

    .line 60
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    move-result p3

    .line 64
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    move-result-object p1

    .line 76
    move p3, v1

    .line 77
    :goto_1
    iget-object p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 79
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    .line 82
    move-result p4

    .line 83
    if-ge p3, p4, :cond_4

    .line 85
    iget-object p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 87
    invoke-virtual {p4, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 90
    move-result-object p4

    .line 91
    check-cast p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 93
    iget-object v0, p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 101
    iget-object p4, p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 103
    invoke-virtual {p1, p2, p4, v2}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 106
    move-result p4

    .line 107
    if-eqz p4, :cond_3

    .line 109
    return v2

    .line 110
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    return v1
.end method

.method public final writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "t"

    .line 4
    iget v1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    move-object v2, p1

    .line 19
    check-cast v2, Lcom/android/internal/util/FastXmlSerializer;

    .line 21
    const/4 v3, 0x0

    .line 22
    const-string/jumbo v4, "wl"

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    iget-object v5, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 30
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 36
    iget-object v6, v5, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    .line 38
    const-string/jumbo v7, "p"

    .line 41
    invoke-static {p1, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 44
    const-string/jumbo v6, "ct"

    .line 47
    iget-object v5, v5, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 49
    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
