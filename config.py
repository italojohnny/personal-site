class Config:
    @staticmethod
    def init_app(app): pass


class DevelopmentConfig(Config):
    DEBUG = True


class TestingConfig(Config):
    TESTING = True


class ProductionConfig(Config):
    DEBUG = False


config = {
    'production': ProductionConfig,
    'developement': DevelopmentConfig,
    'testing': TestingConfig,
    'default': DevelopmentConfig
}
