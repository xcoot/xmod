.class public final Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mBookModeReachability:I

.field public final mFileToUpdate:Landroid/util/AtomicFile;

.field public final mHorizontalReachability:I

.field public final mOnComplete:Ljava/util/function/Consumer;

.field public final mTabletopModeReachability:I

.field public final mVerticalReachability:I


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final process()V
    .locals 4

    .line 1
    const-string v0, "UpdateValuesCommand"

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    .line 9
    .line 10
    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    .line 13
    .line 14
    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 15
    .line 16
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    .line 17
    .line 18
    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    .line 21
    .line 22
    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "WindowManager"

    .line 60
    .line 61
    const-string v3, "Error writing to AppCompatConfigurationPersister. Using default values!"

    .line 62
    .line 63
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    .line 67
    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 72
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    .line 73
    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    throw v1
.end method
