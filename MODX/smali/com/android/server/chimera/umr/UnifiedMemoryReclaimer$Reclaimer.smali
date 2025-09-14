.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONTROL_STRINGS:[Ljava/lang/String;

.field public static final MODE_STRINGS:[Ljava/lang/String;


# instance fields
.field public final efficiency:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "disabled"

    .line 4
    const-string/jumbo v1, "enabled"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "suppressed"

    .line 16
    const-string/jumbo v1, "proactive"

    .line 19
    const-string/jumbo v2, "default"

    .line 22
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    .line 9
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    sget-object v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    .line 8
    aget-object v1, v2, v1

    .line 10
    iget v2, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->efficiency:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    .line 18
    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    const-string v0, "%s: %s, %s, %d"

    .line 24
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
