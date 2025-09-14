.class public Lcom/samsung/android/displayquality/SemDisplayQualityAidlClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final RESULT_DISABLED:I = 0x0

.field public static final RESULT_ENABLED:I = 0x1

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_NO_SUPPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityAidlClientDummy"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p0, "SemDisplayQualityAidlClientDummy"

    .line 5
    .line 6
    const-string v0, "SemDisplayQualityAidlClient dummy"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public setOutdoorVisibilityEnhancerEnabled(Z)I
    .locals 0

    .line 1
    const-string p0, "SemDisplayQualityAidlClientDummy"

    .line 2
    .line 3
    const-string/jumbo p1, "setOutdoorVisibilityEnhancerEnabled dummy"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
