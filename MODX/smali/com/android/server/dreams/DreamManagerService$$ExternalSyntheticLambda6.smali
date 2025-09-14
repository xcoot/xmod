.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p2, "Dreamland:"

    .line 10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 15
    if-eqz p2, :cond_0

    .line 17
    const-string p2, "  mCurrentDream:"

    .line 19
    const-string v0, "    mToken="

    .line 21
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 27
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "    mName="

    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 48
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "    mIsPreviewMode="

    .line 64
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 69
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 71
    const-string v1, "    mCanDoze="

    .line 73
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 79
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 81
    const-string v1, "    mUserId="

    .line 83
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 89
    iget v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 91
    const-string v1, "    mBound="

    .line 93
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 99
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    .line 101
    const-string v1, "    mService="

    .line 103
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object p2

    .line 107
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 109
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    const-string v0, "    mWakingGently="

    .line 125
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 130
    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakingGently:Z

    .line 132
    invoke-static {p2, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    const-string p2, "  mCurrentDream: null"

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "  mSentStartBroadcast="

    .line 145
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 150
    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 153
    return-void
.end method
