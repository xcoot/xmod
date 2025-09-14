.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    .line 12
    .line 13
    new-array v4, v1, [Ljava/io/Closeable;

    .line 14
    .line 15
    aput-object v3, v4, v0

    .line 16
    .line 17
    aput-object p0, v4, v2

    .line 18
    .line 19
    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 20
    .line 21
    :goto_0
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    aget-object p0, v4, v0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    add-int/2addr v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    .line 34
    .line 35
    new-array v4, v1, [Ljava/io/Closeable;

    .line 36
    .line 37
    aput-object v3, v4, v0

    .line 38
    .line 39
    aput-object p0, v4, v2

    .line 40
    .line 41
    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    .line 42
    .line 43
    :goto_1
    if-ge v0, v1, :cond_1

    .line 44
    .line 45
    aget-object p0, v4, v0

    .line 46
    .line 47
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    :catch_1
    add-int/2addr v0, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
