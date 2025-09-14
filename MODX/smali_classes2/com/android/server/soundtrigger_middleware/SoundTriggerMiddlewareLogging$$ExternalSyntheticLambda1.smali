.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 2
    .line 3
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;

    .line 4
    .line 5
    iget v0, p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    .line 6
    .line 7
    iget-object p1, p1, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    .line 10
    .line 11
    iget p1, p1, Landroid/media/soundtrigger/Properties;->version:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mId:I

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mImplementor:Ljava/lang/String;

    .line 19
    .line 20
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mVersion:I

    .line 21
    .line 22
    return-object p0
.end method
