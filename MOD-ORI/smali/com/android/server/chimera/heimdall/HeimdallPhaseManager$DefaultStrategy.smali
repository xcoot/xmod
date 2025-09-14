.class public final Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sBgTrimPackages:[Ljava/lang/String;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

.field public final synthetic this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "com.sec.android.app.launcher"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->sBgTrimPackages:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 9
    .line 10
    return-void
.end method

.method private final sendBgTrimIfAppNeed$com$android$server$chimera$heimdall$HeimdallPhaseManager$DefaultStrategy(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    .line 1
    return-void
.end method
