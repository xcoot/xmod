.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[I

.field public final synthetic f$4:[J


# direct methods
.method public synthetic constructor <init>([I[I[I[I[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$0:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$3:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$4:[J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$0:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$1:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$2:[I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$3:[I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;->f$4:[J

    .line 10
    .line 11
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    aget v4, v0, v5

    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    aput v4, v0, v5

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    aget v0, v1, v5

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    aput v0, v1, v5

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    aget v0, v2, v5

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    aput v0, v2, v5

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    aget v0, v3, v5

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    aput v0, v3, v5

    .line 61
    .line 62
    aget-wide v0, p0, v5

    .line 63
    .line 64
    new-instance v2, Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    add-long/2addr v2, v0

    .line 78
    aput-wide v2, p0, v5

    .line 79
    .line 80
    :cond_3
    return-void
.end method
