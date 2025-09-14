.class public final Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mSessionIdLock:Ljava/lang/Object;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    return-void
.end method


# virtual methods
.method public final getCurrentSessionId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    const-string/jumbo v1, "media_projection_session_id_key"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
