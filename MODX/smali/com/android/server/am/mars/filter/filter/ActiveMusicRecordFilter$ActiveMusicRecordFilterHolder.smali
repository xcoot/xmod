.class public abstract Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 9
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 11
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 13
    new-instance v2, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 20
    new-instance v2, Landroid/util/ArrayMap;

    .line 22
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    iput-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    .line 34
    const/4 v2, 0x0

    .line 35
    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 37
    const-string/jumbo v2, "com.sec.android.app.fm"

    .line 40
    iput-object v2, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->FM_RADIO_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v1, Landroid/util/ArrayMap;

    .line 46
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 51
    new-instance v1, Landroid/util/ArraySet;

    .line 53
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 56
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 58
    const-string/jumbo v1, "g_silent_audio="

    .line 61
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->SILENT_AUDIO_PREX:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 65
    return-void
.end method
