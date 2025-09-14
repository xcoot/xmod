.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$4cnnwLcrRIvopnI2Y9UMN0-4LXk(Landroid/content/ComponentName$WithComponentName;)Z

    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_1
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_2
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z

    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_4
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_5
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$FG505HlyvajkfrO9xmitenM2Nv8(Landroid/content/ComponentName$WithComponentName;)Z

    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
