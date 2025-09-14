.class public abstract Lcom/android/server/om/SemSamsungThemeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final disableOverlayList:Ljava/util/List;

.field public static final dynamicColorOverlayList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "eng"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "userdebug"

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v0, "SemWT_android"

    .line 24
    .line 25
    const-string v1, "SemWT_MonetPalette"

    .line 26
    .line 27
    const-string v2, "SemWT_com.android.systemui"

    .line 28
    .line 29
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 38
    .line 39
    const-string/jumbo v0, "neutral"

    .line 40
    .line 41
    .line 42
    const-string v1, "dynamic"

    .line 43
    .line 44
    const-string v2, "accent"

    .line 45
    .line 46
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->dynamicColorOverlayList:Ljava/util/List;

    .line 55
    .line 56
    return-void
.end method
