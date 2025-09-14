.class public final Lcom/android/server/wm/AppCompatConfigurationPersister;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompletionCallback:Ljava/util/function/Consumer;

.field public final mConfigurationFile:Landroid/util/AtomicFile;

.field public final mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

.field public volatile mLetterboxPositionForBookModeReachability:I

.field public volatile mLetterboxPositionForHorizontalReachability:I

.field public volatile mLetterboxPositionForTabletopModeReachability:I

.field public volatile mLetterboxPositionForVerticalReachability:I

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    .line 13
    .line 14
    new-instance p1, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {p1, p5, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Landroid/util/AtomicFile;

    .line 20
    .line 21
    invoke-direct {p2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 27
    .line 28
    new-instance p1, Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfigurationPersister;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 38
    .line 39
    invoke-direct {p2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatConfigurationPersister$$ExternalSyntheticLambda0;->run()V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    :try_start_0
    new-array v1, v1, [B

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    if-lez v2, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 36
    .line 37
    .line 38
    throw p0
.end method


# virtual methods
.method public final getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 7
    .line 8
    return p0
.end method

.method public final getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 7
    .line 8
    return p0
.end method

.method public final setLetterboxPositionForHorizontalReachability(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 14
    .line 15
    if-eq p2, p1, :cond_1

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final setLetterboxPositionForVerticalReachability(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 14
    .line 15
    if-eq p2, p1, :cond_1

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateConfiguration()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 2
    .line 3
    new-instance v8, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 12
    .line 13
    iget v6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    .line 16
    .line 17
    move-object v1, v8

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;-><init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    invoke-virtual {v0, v8, p0}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public useDefaultValue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 56
    .line 57
    return-void
.end method
