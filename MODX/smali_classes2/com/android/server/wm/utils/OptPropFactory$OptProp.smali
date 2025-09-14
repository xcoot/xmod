.class public final Lcom/android/server/wm/utils/OptPropFactory$OptProp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCondition:Ljava/util/function/BooleanSupplier;

.field public final mPropertyName:Ljava/lang/String;

.field public mValue:I

.field public final mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v0, -0x2

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValueSupplier:Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iget v2, v1, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/utils/OptPropFactory;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    iget-object v2, v1, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/utils/OptPropFactory;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "Cannot read opt property "

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mPropertyName:Ljava/lang/String;

    .line 86
    .line 87
    const-string v3, "OptProp"

    .line 88
    .line 89
    invoke-static {v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 93
    .line 94
    :cond_2
    :goto_1
    iget p0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mValue:I

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isFalse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public final shouldEnableWithOverrideAndProperty(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    :cond_2
    move v1, v0

    .line 28
    :cond_3
    return v1
.end method
