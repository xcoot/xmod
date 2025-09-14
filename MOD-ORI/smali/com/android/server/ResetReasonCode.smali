.class public abstract Lcom/android/server/ResetReasonCode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final WILDCARD_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ".*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/ResetReasonCode;->WILDCARD_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/ResetReasonCode;->WILDCARD_PATTERN:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addCauseContents()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public addCauseStackFromContexts(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public addStackContents()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public addSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentPattern()Ljava/util/regex/Pattern;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPatternByReason()Ljava/util/regex/Pattern;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object p0
.end method
