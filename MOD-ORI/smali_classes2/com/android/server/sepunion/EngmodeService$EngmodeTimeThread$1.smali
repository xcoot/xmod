.class public final Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    .line 10
    .line 11
    const-string p0, "engmode_service_time"

    .line 12
    .line 13
    const-string v0, "clear engmode service"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
