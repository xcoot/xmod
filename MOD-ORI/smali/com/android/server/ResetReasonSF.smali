.class Lcom/android/server/ResetReasonSF;
.super Lcom/android/server/CommonNativeResetReasonCode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addCauseContents()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "graphics"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public getPatternByReason()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    const-string/jumbo v0, "pid: (\\d+).*surfaceflinger.*|pid: (\\d+).*android\\.hardware\\.graphics.*|pid: (\\d+).*vendor\\.qti\\.hardware\\.display.*"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    return-object v0
.end method
