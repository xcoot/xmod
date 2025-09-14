.class public final Lcom/android/server/power/PowerManagerService$10;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCoverAttachStateChanged(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onCoverAttachStateChanged: attach: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    const-string v2, "PowerManagerService"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v3, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 33
    .line 34
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "  mCoverType: "

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 48
    .line 49
    iget p1, p1, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    const-string/jumbo p1, "onCoverAttachStateChanged: mCoverManager returns NULL."

    .line 63
    .line 64
    .line 65
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 73
    .line 74
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v1, "onCoverAttachStateChanged = "

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 85
    .line 86
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, p1, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    .line 96
    .line 97
    :cond_2
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
