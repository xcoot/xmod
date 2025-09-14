.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mData:[B

.field public final mMode:B

.field public final mSalt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    new-instance v1, Ljava/security/SecureRandom;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    const-string p2, ""

    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(B[BLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 5
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    return-void
.end method

.method public static forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x5

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    aget-byte v1, p0, v1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    array-length v2, p0

    .line 16
    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x4

    .line 22
    invoke-static {p0, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Ljava/lang/String;

    .line 42
    .line 43
    array-length v4, p0

    .line 44
    sub-int/2addr v4, v0

    .line 45
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {v3, p0, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 48
    .line 49
    .line 50
    move-object p0, v2

    .line 51
    move-object v0, v3

    .line 52
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 53
    .line 54
    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    .line 12
    .line 13
    const-class p0, Landroid/content/pm/ArchivedPackageParcel;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/content/pm/ArchivedPackageParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public toByteArray()[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 3
    .line 4
    iget-byte v2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v2, v3, :cond_0

    .line 8
    .line 9
    array-length p0, v1

    .line 10
    add-int/2addr p0, v3

    .line 11
    new-array p0, p0, [B

    .line 12
    .line 13
    aput-byte v2, p0, v0

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    invoke-static {v1, v0, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v4, v1

    .line 21
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    add-int/lit8 v5, v4, 0x5

    .line 30
    .line 31
    array-length v6, p0

    .line 32
    add-int/2addr v5, v6

    .line 33
    new-array v5, v5, [B

    .line 34
    .line 35
    aput-byte v2, v5, v0

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    invoke-static {v5, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-static {v1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    add-int/2addr v2, v4

    .line 56
    array-length v1, p0

    .line 57
    invoke-static {p0, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    move-object p0, v5

    .line 61
    :goto_0
    return-object p0
.end method
