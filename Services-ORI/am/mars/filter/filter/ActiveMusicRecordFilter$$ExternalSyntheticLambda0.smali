.class public final synthetic Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
